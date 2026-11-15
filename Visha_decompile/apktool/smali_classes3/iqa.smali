.class public final Liqa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/util/Comparator;

.field public final c:[Ljava/lang/Object;

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lxd8;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Liqa;->b:Ljava/util/Comparator;

    iput p2, p0, Liqa;->a:I

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "k (%s) must be >= 0"

    invoke-static {v1, v2, p2}, Lxd8;->f(ZLjava/lang/String;I)V

    const v1, 0x3fffffff    # 1.9999999f

    if-gt p2, v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    const-string v1, "k (%s) must be <= Integer.MAX_VALUE / 2"

    invoke-static {p1, v1, p2}, Lxd8;->f(ZLjava/lang/String;I)V

    const/4 p1, 0x2

    invoke-static {p2, p1}, Lr15;->b(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Liqa;->c:[Ljava/lang/Object;

    iput v0, p0, Liqa;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Liqa;->e:Ljava/lang/Object;

    return-void
.end method

.method public static a(ILjava/util/Comparator;)Liqa;
    .locals 1

    new-instance v0, Liqa;

    invoke-direct {v0, p1, p0}, Liqa;-><init>(Ljava/util/Comparator;I)V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Liqa;->a:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Liqa;->d:I

    if-nez v1, :cond_1

    iget-object v0, p0, Liqa;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object p1, p0, Liqa;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Liqa;->d:I

    goto :goto_0

    :cond_1
    if-ge v1, v0, :cond_2

    iget-object v0, p0, Liqa;->c:[Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Liqa;->d:I

    aput-object p1, v0, v1

    iget-object v0, p0, Liqa;->b:Ljava/util/Comparator;

    iget-object v1, p0, Liqa;->e:Ljava/lang/Object;

    invoke-static {v1}, Lr37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    iput-object p1, p0, Liqa;->e:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Liqa;->b:Ljava/util/Comparator;

    iget-object v1, p0, Liqa;->e:Ljava/lang/Object;

    invoke-static {v1}, Lr37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_3

    iget-object v0, p0, Liqa;->c:[Ljava/lang/Object;

    iget v1, p0, Liqa;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Liqa;->d:I

    aput-object p1, v0, v1

    iget p1, p0, Liqa;->a:I

    mul-int/lit8 p1, p1, 0x2

    if-ne v2, p1, :cond_3

    invoke-virtual {p0}, Liqa;->g()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Ljava/util/Iterator;)V
    .locals 1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Liqa;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(III)I
    .locals 3

    iget-object v0, p0, Liqa;->c:[Ljava/lang/Object;

    aget-object v0, v0, p3

    invoke-static {v0}, Lr37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Liqa;->c:[Ljava/lang/Object;

    aget-object v2, v1, p2

    aput-object v2, v1, p3

    move p3, p1

    :goto_0
    if-ge p1, p2, :cond_1

    iget-object v1, p0, Liqa;->b:Ljava/util/Comparator;

    iget-object v2, p0, Liqa;->c:[Ljava/lang/Object;

    aget-object v2, v2, p1

    invoke-static {v2}, Lr37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    invoke-virtual {p0, p3, p1}, Liqa;->e(II)V

    add-int/lit8 p3, p3, 0x1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Liqa;->c:[Ljava/lang/Object;

    aget-object p1, p0, p3

    aput-object p1, p0, p2

    aput-object v0, p0, p3

    return p3
.end method

.method public final e(II)V
    .locals 2

    iget-object p0, p0, Liqa;->c:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aget-object v1, p0, p2

    aput-object v1, p0, p1

    aput-object v0, p0, p2

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Liqa;->c:[Ljava/lang/Object;

    iget v1, p0, Liqa;->d:I

    iget-object v2, p0, Liqa;->b:Ljava/util/Comparator;

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    iget v1, p0, Liqa;->d:I

    iget v2, p0, Liqa;->a:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Liqa;->c:[Ljava/lang/Object;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget v1, p0, Liqa;->a:I

    iput v1, p0, Liqa;->d:I

    iget-object v2, p0, Liqa;->c:[Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v2, v1

    iput-object v1, p0, Liqa;->e:Ljava/lang/Object;

    :cond_0
    iget p0, p0, Liqa;->d:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final g()V
    .locals 7

    iget v0, p0, Liqa;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v0, v1}, Lr15;->f(ILjava/math/RoundingMode;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    if-ge v2, v0, :cond_2

    add-int v5, v2, v0

    add-int/lit8 v5, v5, 0x1

    ushr-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v2, v0, v5}, Liqa;->d(III)I

    move-result v5

    iget v6, p0, Liqa;->a:I

    if-le v5, v6, :cond_1

    add-int/lit8 v5, v5, -0x1

    move v0, v5

    goto :goto_0

    :cond_1
    if-ge v5, v6, :cond_2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v4, v5

    :goto_0
    add-int/lit8 v3, v3, 0x1

    if-lt v3, v1, :cond_0

    iget-object v1, p0, Liqa;->c:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Liqa;->b:Ljava/util/Comparator;

    invoke-static {v1, v2, v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    :cond_2
    iget v0, p0, Liqa;->a:I

    iput v0, p0, Liqa;->d:I

    iget-object v0, p0, Liqa;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    invoke-static {v0}, Lr37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Liqa;->e:Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    iget v0, p0, Liqa;->a:I

    if-ge v4, v0, :cond_4

    iget-object v0, p0, Liqa;->b:Ljava/util/Comparator;

    iget-object v1, p0, Liqa;->c:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-static {v1}, Lr37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Liqa;->e:Ljava/lang/Object;

    invoke-static {v2}, Lr37;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Liqa;->c:[Ljava/lang/Object;

    aget-object v0, v0, v4

    iput-object v0, p0, Liqa;->e:Ljava/lang/Object;

    :cond_3
    goto :goto_1

    :cond_4
    return-void
.end method
