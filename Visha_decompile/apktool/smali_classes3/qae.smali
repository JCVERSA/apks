.class public final Lqae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(I[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lqae;->a:I

    iput-object p2, p0, Lqae;->b:[B

    iput p3, p0, Lqae;->c:I

    iput p4, p0, Lqae;->d:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lqae;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lqae;

    iget v2, p0, Lqae;->a:I

    iget v3, p1, Lqae;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lqae;->c:I

    iget v3, p1, Lqae;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lqae;->d:I

    iget v3, p1, Lqae;->d:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lqae;->b:[B

    iget-object p1, p1, Lqae;->b:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lqae;->a:I

    iget-object v1, p0, Lqae;->b:[B

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lqae;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lqae;->d:I

    add-int/2addr v0, p0

    return v0
.end method
