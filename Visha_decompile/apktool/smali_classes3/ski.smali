.class public final Lski;
.super Loli;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lqki;


# direct methods
.method public synthetic constructor <init>(IILqki;Lrki;)V
    .locals 0

    invoke-direct {p0}, Loli;-><init>()V

    iput p1, p0, Lski;->a:I

    iput p2, p0, Lski;->b:I

    iput-object p3, p0, Lski;->c:Lqki;

    return-void
.end method

.method public static e()Lpki;
    .locals 2

    new-instance v0, Lpki;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpki;-><init>(Lrki;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object p0, p0, Lski;->c:Lqki;

    sget-object v0, Lqki;->e:Lqki;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lski;->b:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lski;->a:I

    return p0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lski;->c:Lqki;

    sget-object v1, Lqki;->e:Lqki;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lski;->b:I

    return p0

    :cond_0
    sget-object v1, Lqki;->b:Lqki;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lqki;->c:Lqki;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lqki;->d:Lqki;

    if-ne v0, v1, :cond_3

    :goto_0
    iget p0, p0, Lski;->b:I

    add-int/lit8 p0, p0, 0x5

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown variant"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lski;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lski;

    iget v0, p1, Lski;->a:I

    iget v2, p0, Lski;->a:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lski;->d()I

    move-result v0

    invoke-virtual {p0}, Lski;->d()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p1, p1, Lski;->c:Lqki;

    iget-object p0, p0, Lski;->c:Lqki;

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final f()Lqki;
    .locals 0

    iget-object p0, p0, Lski;->c:Lqki;

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lski;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lski;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lski;->c:Lqki;

    const-class v2, Lski;

    filled-new-array {v2, v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lski;->c:Lqki;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AES-CMAC Parameters (variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lski;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lski;->a:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-byte key)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
