.class public final Lppa$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lppa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:[C

.field public b:I

.field public final c:Ljava/util/List;


# direct methods
.method public constructor <init>([C)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lppa$a;->a:[C

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lppa$a;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic e(Lppa$a;IILjava/lang/Object;)I
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lppa$a;->d(I)I

    move-result p0

    return p0
.end method

.method public static synthetic i(Lppa$a;IILjava/lang/Object;)C
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lppa$a;->h(I)C

    move-result p0

    return p0
.end method

.method public static synthetic l(Lppa$a;IILjava/lang/Object;)C
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-virtual {p0, p1}, Lppa$a;->k(I)C

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(I)C
    .locals 1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lppa$a;->a:[C

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-char p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b()C
    .locals 2

    iget v0, p0, Lppa$a;->b:I

    iget-object p0, p0, Lppa$a;->a:[C

    array-length v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    aget-char p0, p0, v0

    :goto_0
    return p0
.end method

.method public final c()Z
    .locals 6

    iget v0, p0, Lppa$a;->b:I

    iget-object v1, p0, Lppa$a;->a:[C

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v3, v2

    :goto_0
    if-lez v0, :cond_1

    iget-object v4, p0, Lppa$a;->a:[C

    aget-char v4, v4, v0

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_2

    move v2, v1

    :cond_2
    :goto_1
    return v2
.end method

.method public final d(I)I
    .locals 1

    iget v0, p0, Lppa$a;->b:I

    add-int/2addr p1, v0

    iput p1, p0, Lppa$a;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lppa$a;

    invoke-static {v1, v0}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.yandex.div.evaluable.internal.Tokenizer.TokenizationState"

    invoke-static {p1, v0}, Ly45;->h(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lppa$a;

    iget-object p0, p0, Lppa$a;->a:[C

    iget-object p1, p1, Lppa$a;->a:[C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lppa$a;->b:I

    return p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lppa$a;->c:Ljava/util/List;

    return-object p0
.end method

.method public final h(I)C
    .locals 3

    iget v0, p0, Lppa$a;->b:I

    add-int v1, v0, p1

    iget-object p0, p0, Lppa$a;->a:[C

    array-length v2, p0

    if-lt v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/2addr v0, p1

    aget-char p0, p0, v0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lppa$a;->a:[C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result p0

    return p0
.end method

.method public final j(II)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lppa$a;->a:[C

    invoke-static {p0, p1, p2}, Lg1a;->y([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k(I)C
    .locals 2

    iget v0, p0, Lppa$a;->b:I

    sub-int v1, v0, p1

    if-ltz v1, :cond_0

    iget-object p0, p0, Lppa$a;->a:[C

    sub-int/2addr v0, p1

    aget-char p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenizationState(source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lppa$a;->a:[C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
