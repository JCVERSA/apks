.class public final Li3j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Li3j;


# instance fields
.field public a:I

.field public b:[I

.field public c:[Ljava/lang/Object;

.field public d:I

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Li3j;

    const/4 v1, 0x0

    new-array v2, v1, [I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, v1}, Li3j;-><init>(I[I[Ljava/lang/Object;Z)V

    sput-object v0, Li3j;->f:Li3j;

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/Object;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Li3j;->d:I

    iput p1, p0, Li3j;->a:I

    iput-object p2, p0, Li3j;->b:[I

    iput-object p3, p0, Li3j;->c:[Ljava/lang/Object;

    iput-boolean p4, p0, Li3j;->e:Z

    return-void
.end method

.method public static c()Li3j;
    .locals 1

    sget-object v0, Li3j;->f:Li3j;

    return-object v0
.end method

.method public static e(Li3j;Li3j;)Li3j;
    .locals 6

    iget v0, p0, Li3j;->a:I

    iget v1, p1, Li3j;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Li3j;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p1, Li3j;->b:[I

    iget v3, p0, Li3j;->a:I

    iget v4, p1, Li3j;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Li3j;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p1, Li3j;->c:[Ljava/lang/Object;

    iget p0, p0, Li3j;->a:I

    iget p1, p1, Li3j;->a:I

    invoke-static {v3, v5, v2, p0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Li3j;

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Li3j;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public static f()Li3j;
    .locals 5

    new-instance v0, Li3j;

    const/16 v1, 0x8

    new-array v2, v1, [I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v4, v2, v1, v3}, Li3j;-><init>(I[I[Ljava/lang/Object;Z)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 5

    iget v0, p0, Li3j;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Li3j;->a:I

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Li3j;->b:[I

    aget v2, v2, v0

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_4

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Li3j;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    :goto_1
    add-int/2addr v1, v2

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Lcom/google/android/gms/internal/play_billing/zzha;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzha;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    shl-int/lit8 v2, v3, 0x3

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    add-int/2addr v2, v2

    iget-object v3, p0, Li3j;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Li3j;

    invoke-virtual {v3}, Li3j;->a()I

    move-result v3

    :goto_2
    add-int/2addr v2, v3

    goto :goto_1

    :cond_2
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Li3j;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    invoke-static {v3}, Lo4i;->w(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v2, v4

    goto :goto_1

    :cond_3
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Li3j;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_4
    shl-int/lit8 v2, v3, 0x3

    iget-object v3, p0, Li3j;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    invoke-static {v3, v4}, Lo4i;->x(J)I

    move-result v3

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    iput v1, p0, Li3j;->d:I

    return v1

    :cond_6
    return v0
.end method

.method public final b()I
    .locals 7

    iget v0, p0, Li3j;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Li3j;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Li3j;->b:[I

    aget v2, v2, v0

    ushr-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Li3j;->c:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lcom/google/android/gms/internal/play_billing/zzfp;

    const/16 v4, 0x8

    invoke-static {v4}, Lo4i;->w(I)I

    move-result v4

    add-int/2addr v4, v4

    const/16 v5, 0x10

    invoke-static {v5}, Lo4i;->w(I)I

    move-result v5

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    add-int/2addr v5, v2

    const/16 v2, 0x18

    invoke-static {v2}, Lo4i;->w(I)I

    move-result v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/play_billing/zzfp;->zzd()I

    move-result v3

    invoke-static {v3}, Lo4i;->w(I)I

    move-result v6

    add-int/2addr v6, v3

    add-int/2addr v2, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Li3j;->d:I

    return v1

    :cond_1
    return v0
.end method

.method public final d(Li3j;)Li3j;
    .locals 6

    sget-object v0, Li3j;->f:Li3j;

    invoke-virtual {p1, v0}, Li3j;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Li3j;->g()V

    iget v0, p0, Li3j;->a:I

    iget v1, p1, Li3j;->a:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li3j;->l(I)V

    iget-object v1, p1, Li3j;->b:[I

    iget-object v2, p0, Li3j;->b:[I

    iget v3, p0, Li3j;->a:I

    iget v4, p1, Li3j;->a:I

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Li3j;->c:[Ljava/lang/Object;

    iget-object v2, p0, Li3j;->c:[Ljava/lang/Object;

    iget v3, p0, Li3j;->a:I

    iget p1, p1, Li3j;->a:I

    invoke-static {v1, v5, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Li3j;->a:I

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Li3j;

    if-nez v2, :cond_2

    return v1

    :cond_2
    check-cast p1, Li3j;

    iget v2, p0, Li3j;->a:I

    iget v3, p1, Li3j;->a:I

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Li3j;->b:[I

    iget-object v4, p1, Li3j;->b:[I

    move v5, v1

    :goto_0
    if-ge v5, v2, :cond_4

    aget v6, v3, v5

    aget v7, v4, v5

    if-eq v6, v7, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Li3j;->c:[Ljava/lang/Object;

    iget-object p1, p1, Li3j;->c:[Ljava/lang/Object;

    iget p0, p0, Li3j;->a:I

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_5

    aget-object v4, v2, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public final g()V
    .locals 0

    iget-boolean p0, p0, Li3j;->e:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final h()V
    .locals 1

    iget-boolean v0, p0, Li3j;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Li3j;->e:Z

    :cond_0
    return-void
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Li3j;->a:I

    add-int/lit16 v1, v0, 0x20f

    iget-object v2, p0, Li3j;->b:[I

    const/4 v3, 0x0

    const/16 v4, 0x11

    move v5, v3

    move v6, v4

    :goto_0
    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v6, 0x1f

    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v6

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Li3j;->c:[Ljava/lang/Object;

    iget p0, p0, Li3j;->a:I

    :goto_1
    if-ge v3, p0, :cond_1

    mul-int/lit8 v4, v4, 0x1f

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    return v1
.end method

.method public final i(Ljava/lang/StringBuilder;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Li3j;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Li3j;->b:[I

    aget v1, v1, v0

    ushr-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Li3j;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {p1, p2, v1, v2}, Ln0j;->b(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final j(ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0}, Li3j;->g()V

    iget v0, p0, Li3j;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Li3j;->l(I)V

    iget-object v0, p0, Li3j;->b:[I

    iget v1, p0, Li3j;->a:I

    aput p1, v0, v1

    iget-object p1, p0, Li3j;->c:[Ljava/lang/Object;

    aput-object p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Li3j;->a:I

    return-void
.end method

.method public final k(La5j;)V
    .locals 5

    iget v0, p0, Li3j;->a:I

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Li3j;->a:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Li3j;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Li3j;->c:[Ljava/lang/Object;

    aget-object v2, v2, v0

    ushr-int/lit8 v3, v1, 0x3

    and-int/lit8 v1, v1, 0x7

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v4, 0x3

    if-eq v1, v4, :cond_1

    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v3, v1}, La5j;->f(II)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Lcom/google/android/gms/internal/play_billing/zzha;

    const-string v0, "Protocol message tag had invalid wire type."

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzha;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    invoke-interface {p1, v3}, La5j;->zzG(I)V

    check-cast v2, Li3j;

    invoke-virtual {v2, p1}, Li3j;->k(La5j;)V

    invoke-interface {p1, v3}, La5j;->zzh(I)V

    goto :goto_1

    :cond_2
    check-cast v2, Lcom/google/android/gms/internal/play_billing/zzfp;

    invoke-interface {p1, v3, v2}, La5j;->D(ILcom/google/android/gms/internal/play_billing/zzfp;)V

    goto :goto_1

    :cond_3
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v3, v1, v2}, La5j;->l(IJ)V

    goto :goto_1

    :cond_4
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v3, v1, v2}, La5j;->n(IJ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final l(I)V
    .locals 3

    iget-object v0, p0, Li3j;->b:[I

    array-length v1, v0

    if-le p1, v1, :cond_2

    iget v1, p0, Li3j;->a:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    move p1, v1

    :cond_0
    const/16 v1, 0x8

    if-ge p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Li3j;->b:[I

    iget-object v0, p0, Li3j;->c:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li3j;->c:[Ljava/lang/Object;

    :cond_2
    return-void
.end method
