.class public abstract Lcom/yandex/mobile/ads/impl/uk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/h70;


# instance fields
.field protected final a:Lcom/yandex/mobile/ads/impl/y52;

.field protected final b:I

.field protected final c:[I

.field private final d:[Lcom/yandex/mobile/ads/impl/jc0;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/y52;[I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/hg;->b(Z)V

    invoke-static {p1}, Lcom/yandex/mobile/ads/impl/hg;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/impl/y52;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/uk;->a:Lcom/yandex/mobile/ads/impl/y52;

    array-length v0, p2

    iput v0, p0, Lcom/yandex/mobile/ads/impl/uk;->b:I

    new-array v0, v0, [Lcom/yandex/mobile/ads/impl/jc0;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/uk;->d:[Lcom/yandex/mobile/ads/impl/jc0;

    move v0, v1

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uk;->d:[Lcom/yandex/mobile/ads/impl/jc0;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lcom/yandex/mobile/ads/impl/y52;->a(I)Lcom/yandex/mobile/ads/impl/jc0;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/uk;->d:[Lcom/yandex/mobile/ads/impl/jc0;

    new-instance v0, Lbvd;

    invoke-direct {v0}, Lbvd;-><init>()V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iget p2, p0, Lcom/yandex/mobile/ads/impl/uk;->b:I

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/uk;->c:[I

    :goto_2
    iget p2, p0, Lcom/yandex/mobile/ads/impl/uk;->b:I

    if-ge v1, p2, :cond_2

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/uk;->c:[I

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uk;->d:[Lcom/yandex/mobile/ads/impl/jc0;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lcom/yandex/mobile/ads/impl/y52;->a(Lcom/yandex/mobile/ads/impl/jc0;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    new-array p0, p2, [J

    return-void
.end method

.method private static synthetic a(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/jc0;)I
    .locals 0

    .line 4
    iget p1, p1, Lcom/yandex/mobile/ads/impl/jc0;->i:I

    iget p0, p0, Lcom/yandex/mobile/ads/impl/jc0;->i:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic b(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/jc0;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/uk;->a(Lcom/yandex/mobile/ads/impl/jc0;Lcom/yandex/mobile/ads/impl/jc0;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)Lcom/yandex/mobile/ads/impl/jc0;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uk;->d:[Lcom/yandex/mobile/ads/impl/jc0;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final a()Lcom/yandex/mobile/ads/impl/y52;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uk;->a:Lcom/yandex/mobile/ads/impl/y52;

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()I
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uk;->c:[I

    array-length p0, p0

    return p0
.end method

.method public final b(I)I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uk;->c:[I

    aget p0, p0, p1

    return p0
.end method

.method public final c(I)I
    .locals 2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lcom/yandex/mobile/ads/impl/uk;->b:I

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uk;->c:[I

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

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e()Lcom/yandex/mobile/ads/impl/jc0;
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uk;->d:[Lcom/yandex/mobile/ads/impl/jc0;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/yandex/mobile/ads/impl/uk;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/uk;->a:Lcom/yandex/mobile/ads/impl/y52;

    iget-object v3, p1, Lcom/yandex/mobile/ads/impl/uk;->a:Lcom/yandex/mobile/ads/impl/y52;

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/uk;->c:[I

    iget-object p1, p1, Lcom/yandex/mobile/ads/impl/uk;->c:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/yandex/mobile/ads/impl/uk;->e:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/uk;->a:Lcom/yandex/mobile/ads/impl/y52;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/uk;->c:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/yandex/mobile/ads/impl/uk;->e:I

    :cond_0
    iget p0, p0, Lcom/yandex/mobile/ads/impl/uk;->e:I

    return p0
.end method
