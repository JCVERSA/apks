.class public final Llu1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/google/android/exoplayer2/k;

.field public final c:Lcom/google/android/exoplayer2/k;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/k;Lcom/google/android/exoplayer2/k;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lzi;->a(Z)V

    invoke-static {p1}, Lzi;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llu1;->a:Ljava/lang/String;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/k;

    iput-object p1, p0, Llu1;->b:Lcom/google/android/exoplayer2/k;

    invoke-static {p3}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/k;

    iput-object p1, p0, Llu1;->c:Lcom/google/android/exoplayer2/k;

    iput p4, p0, Llu1;->d:I

    iput p5, p0, Llu1;->e:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Llu1;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Llu1;

    iget v2, p0, Llu1;->d:I

    iget v3, p1, Llu1;->d:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Llu1;->e:I

    iget v3, p1, Llu1;->e:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Llu1;->a:Ljava/lang/String;

    iget-object v3, p1, Llu1;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Llu1;->b:Lcom/google/android/exoplayer2/k;

    iget-object v3, p1, Llu1;->b:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/k;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Llu1;->c:Lcom/google/android/exoplayer2/k;

    iget-object p1, p1, Llu1;->c:Lcom/google/android/exoplayer2/k;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/k;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Llu1;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Llu1;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llu1;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llu1;->b:Lcom/google/android/exoplayer2/k;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/k;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Llu1;->c:Lcom/google/android/exoplayer2/k;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
