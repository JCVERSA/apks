.class public final Lbbi;
.super Ljai;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Lzai;

.field public final f:Lyai;


# direct methods
.method public synthetic constructor <init>(IIIILzai;Lyai;Labi;)V
    .locals 0

    invoke-direct {p0}, Ljai;-><init>()V

    iput p1, p0, Lbbi;->a:I

    iput p2, p0, Lbbi;->b:I

    iput p3, p0, Lbbi;->c:I

    iput p4, p0, Lbbi;->d:I

    iput-object p5, p0, Lbbi;->e:Lzai;

    iput-object p6, p0, Lbbi;->f:Lyai;

    return-void
.end method

.method public static f()Lxai;
    .locals 2

    new-instance v0, Lxai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxai;-><init>(Labi;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Lbbi;->e:Lzai;

    sget-object v0, Lzai;->d:Lzai;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lbbi;->a:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lbbi;->b:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lbbi;->c:I

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lbbi;->d:I

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lbbi;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lbbi;

    iget v0, p1, Lbbi;->a:I

    iget v2, p0, Lbbi;->a:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lbbi;->b:I

    iget v2, p0, Lbbi;->b:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lbbi;->c:I

    iget v2, p0, Lbbi;->c:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lbbi;->d:I

    iget v2, p0, Lbbi;->d:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lbbi;->e:Lzai;

    iget-object v2, p0, Lbbi;->e:Lzai;

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lbbi;->f:Lyai;

    iget-object p0, p0, Lbbi;->f:Lyai;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final g()Lyai;
    .locals 0

    iget-object p0, p0, Lbbi;->f:Lyai;

    return-object p0
.end method

.method public final h()Lzai;
    .locals 0

    iget-object p0, p0, Lbbi;->e:Lzai;

    return-object p0
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lbbi;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lbbi;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Lbbi;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Lbbi;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lbbi;->e:Lzai;

    iget-object v7, p0, Lbbi;->f:Lyai;

    const-class v1, Lbbi;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lbbi;->f:Lyai;

    iget-object v1, p0, Lbbi;->e:Lzai;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AesCtrHmacAead Parameters (variant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lbbi;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte IV, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lbbi;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lbbi;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte AES key, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lbbi;->b:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-byte HMAC key)"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
