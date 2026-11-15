.class public final Lqce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liqe;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:[B


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lqce;->a:I

    iput-object p2, p0, Lqce;->b:Ljava/lang/String;

    iput-object p3, p0, Lqce;->c:Ljava/lang/String;

    iput p4, p0, Lqce;->d:I

    iput p5, p0, Lqce;->e:I

    iput p6, p0, Lqce;->f:I

    iput p7, p0, Lqce;->g:I

    iput-object p8, p0, Lqce;->h:[B

    return-void
.end method

.method public static b(Lu4h;)Lqce;
    .locals 10

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v1

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v2}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbue;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v0

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v3}, Lu4h;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v4

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v5

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v6

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v7

    invoke-virtual {p0}, Lu4h;->A()I

    move-result v0

    new-array v8, v0, [B

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9, v0}, Lu4h;->h([BII)V

    new-instance p0, Lqce;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lqce;-><init>(ILjava/lang/String;Ljava/lang/String;IIII[B)V

    return-object p0
.end method


# virtual methods
.method public final a(Lune;)V
    .locals 1

    iget-object v0, p0, Lqce;->h:[B

    iget p0, p0, Lqce;->a:I

    invoke-virtual {p1, v0, p0}, Lune;->x([BI)Lune;

    return-void
.end method

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

    const-class v3, Lqce;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lqce;

    iget v2, p0, Lqce;->a:I

    iget v3, p1, Lqce;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lqce;->b:Ljava/lang/String;

    iget-object v3, p1, Lqce;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lqce;->c:Ljava/lang/String;

    iget-object v3, p1, Lqce;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lqce;->d:I

    iget v3, p1, Lqce;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lqce;->e:I

    iget v3, p1, Lqce;->e:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lqce;->f:I

    iget v3, p1, Lqce;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lqce;->g:I

    iget v3, p1, Lqce;->g:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lqce;->h:[B

    iget-object p1, p1, Lqce;->h:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lqce;->a:I

    add-int/lit16 v0, v0, 0x20f

    iget-object v1, p0, Lqce;->b:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lqce;->c:Ljava/lang/String;

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lqce;->h:[B

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lqce;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lqce;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lqce;->f:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lqce;->g:I

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Picture: mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lqce;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lqce;->c:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
