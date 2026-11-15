.class public abstract Lse0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lse0$a;
    }
.end annotation


# static fields
.field public static final f:Lse0$a;


# instance fields
.field public final a:[I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lse0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lse0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lse0;->f:Lse0$a;

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 3

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lse0;->a:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lhi;->e0([II)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput v0, p0, Lse0;->b:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lhi;->e0([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lse0;->c:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lhi;->e0([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    iput v1, p0, Lse0;->d:I

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_4

    array-length v0, p1

    const/16 v2, 0x400

    if-gt v0, v2, :cond_3

    invoke-static {p1}, Lfi;->e([I)Ljava/util/List;

    move-result-object v0

    array-length p1, p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Li81;->b1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BinaryVersion with length more than 1024 are not supported. Provided length "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lse0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lse0;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lse0;->c:I

    return p0
.end method

.method public final c(III)Z
    .locals 3

    iget v0, p0, Lse0;->b:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-ge v0, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lse0;->c:I

    if-le p1, p2, :cond_2

    return v1

    :cond_2
    if-ge p1, p2, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lse0;->d:I

    if-lt p0, p3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1
.end method

.method public final d(Lse0;)Z
    .locals 2

    const-string v0, "version"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lse0;->b:I

    iget v1, p1, Lse0;->c:I

    iget p1, p1, Lse0;->d:I

    invoke-virtual {p0, v0, v1, p1}, Lse0;->c(III)Z

    move-result p0

    return p0
.end method

.method public final e(III)Z
    .locals 3

    iget v0, p0, Lse0;->b:I

    const/4 v1, 0x1

    if-ge v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-le v0, p1, :cond_1

    return v2

    :cond_1
    iget p1, p0, Lse0;->c:I

    if-ge p1, p2, :cond_2

    return v1

    :cond_2
    if-le p1, p2, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lse0;->d:I

    if-gt p0, p3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lse0;->b:I

    check-cast p1, Lse0;

    iget v1, p1, Lse0;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lse0;->c:I

    iget v1, p1, Lse0;->c:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lse0;->d:I

    iget v1, p1, Lse0;->d:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lse0;->e:Ljava/util/List;

    iget-object p1, p1, Lse0;->e:Ljava/util/List;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(Lse0;)Z
    .locals 4

    const-string v0, "ourVersion"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lse0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget v0, p1, Lse0;->b:I

    if-nez v0, :cond_1

    iget p0, p0, Lse0;->c:I

    iget p1, p1, Lse0;->c:I

    if-ne p0, p1, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget v3, p1, Lse0;->b:I

    if-ne v0, v3, :cond_1

    iget p0, p0, Lse0;->c:I

    iget p1, p1, Lse0;->c:I

    if-gt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public final g()[I
    .locals 0

    iget-object p0, p0, Lse0;->a:[I

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lse0;->b:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lse0;->c:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lse0;->d:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object p0, p0, Lse0;->e:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Lse0;->g()[I

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "unknown"

    goto :goto_1

    :cond_1
    const/16 v7, 0x3e

    const/4 v8, 0x0

    const-string v1, "."

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v8}, Li81;->y0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method
