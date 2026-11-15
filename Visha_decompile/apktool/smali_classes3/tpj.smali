.class public abstract Ltpj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltqj;


# instance fields
.field public final a:Ln5f;

.field public final b:I

.field public final c:[I

.field public final d:[Lerj;

.field public e:I


# direct methods
.method public constructor <init>(Ln5f;[II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length p3, p2

    const/4 v0, 0x0

    if-lez p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Ln7g;->f(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ltpj;->a:Ln5f;

    iput p3, p0, Ltpj;->b:I

    new-array p3, p3, [Lerj;

    iput-object p3, p0, Ltpj;->d:[Lerj;

    move p3, v0

    :goto_1
    array-length v1, p2

    if-ge p3, v1, :cond_1

    iget-object v1, p0, Ltpj;->d:[Lerj;

    aget v2, p2, p3

    invoke-virtual {p1, v2}, Ln5f;->b(I)Lerj;

    move-result-object v2

    aput-object v2, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Ltpj;->d:[Lerj;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzxl;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzxl;-><init>()V

    invoke-static {p2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Ltpj;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Ltpj;->c:[I

    :goto_2
    iget p2, p0, Ltpj;->b:I

    if-ge v0, p2, :cond_2

    iget-object p2, p0, Ltpj;->c:[I

    iget-object p3, p0, Ltpj;->d:[Lerj;

    aget-object p3, p3, v0

    invoke-virtual {p1, p3}, Ln5f;->a(Lerj;)I

    move-result p3

    aput p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Ltpj;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ltpj;->c:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Ltpj;

    iget-object v2, p0, Ltpj;->a:Ln5f;

    iget-object v3, p1, Ltpj;->a:Ln5f;

    invoke-virtual {v2, v3}, Ln5f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Ltpj;->c:[I

    iget-object p1, p1, Ltpj;->c:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Ltpj;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Ltpj;->a:Ln5f;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ltpj;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Ltpj;->e:I

    :cond_0
    return v0
.end method

.method public final zza(I)I
    .locals 0

    iget-object p0, p0, Ltpj;->c:[I

    aget p0, p0, p1

    return p0
.end method

.method public final zzb()I
    .locals 1

    iget-object p0, p0, Ltpj;->c:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public final zzd()I
    .locals 0

    iget-object p0, p0, Ltpj;->c:[I

    array-length p0, p0

    return p0
.end method

.method public final zze(I)Lerj;
    .locals 0

    iget-object p0, p0, Ltpj;->d:[Lerj;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final zzf()Lerj;
    .locals 1

    iget-object p0, p0, Ltpj;->d:[Lerj;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final zzg()Ln5f;
    .locals 0

    iget-object p0, p0, Ltpj;->a:Ln5f;

    return-object p0
.end method
