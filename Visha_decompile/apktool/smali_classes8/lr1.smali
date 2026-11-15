.class public Llr1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[B

.field public c:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Llr1;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Llr1;->b:[B

    iput p2, p0, Llr1;->c:I

    iput p3, p0, Llr1;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Llr1;->c:I

    return p0
.end method

.method public b()[B
    .locals 0

    iget-object p0, p0, Llr1;->b:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Llr1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Llr1;

    iget v0, p1, Llr1;->c:I

    iget v2, p0, Llr1;->c:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Llr1;->b:[B

    iget-object p1, p1, Llr1;->b:[B

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Llr1;->c:I

    iget-object p0, p0, Llr1;->b:[B

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
