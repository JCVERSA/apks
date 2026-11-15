.class public abstract Lh3i;
.super Lc2i;
.source "SourceFile"


# instance fields
.field public final d:Ljava/lang/CharSequence;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Lc2i;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lh3i;->e:I

    const p1, 0x7fffffff

    iput p1, p0, Lh3i;->f:I

    iput-object p2, p0, Lh3i;->d:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lh3i;->e:I

    :cond_0
    :goto_0
    iget v1, p0, Lh3i;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    invoke-virtual {p0, v1}, Lh3i;->d(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lh3i;->d:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iput v2, p0, Lh3i;->e:I

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lh3i;->c(I)I

    move-result v3

    iput v3, p0, Lh3i;->e:I

    :goto_1
    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lh3i;->e:I

    iget-object v1, p0, Lh3i;->d:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v3, v1, :cond_0

    iput v2, p0, Lh3i;->e:I

    goto :goto_0

    :cond_2
    if-ge v0, v1, :cond_3

    iget-object v3, p0, Lh3i;->d:Ljava/lang/CharSequence;

    invoke-interface {v3, v0}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_3
    if-ge v0, v1, :cond_4

    iget-object v3, p0, Lh3i;->d:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_4
    iget v3, p0, Lh3i;->f:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    iget-object v1, p0, Lh3i;->d:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v2, p0, Lh3i;->e:I

    if-le v3, v0, :cond_5

    add-int/lit8 v2, v3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    add-int/2addr v3, v2

    iput v3, p0, Lh3i;->f:I

    :goto_2
    iget-object p0, p0, Lh3i;->d:Ljava/lang/CharSequence;

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lc2i;->b()Ljava/lang/Object;

    const/4 p0, 0x0

    :goto_3
    return-object p0
.end method

.method public abstract c(I)I
.end method

.method public abstract d(I)I
.end method
