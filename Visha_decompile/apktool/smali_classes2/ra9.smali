.class public final Lra9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:[Lfva;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra9;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lfva;

    iput-object p1, p0, Lra9;->b:[Lfva;

    return-void
.end method


# virtual methods
.method public a(JLqw7;)V
    .locals 0

    iget-object p0, p0, Lra9;->b:[Lfva;

    invoke-static {p1, p2, p3, p0}, Lis0;->a(JLqw7;[Lfva;)V

    return-void
.end method

.method public b(Lqk3;Lnab$d;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lra9;->b:[Lfva;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2}, Lnab$d;->a()V

    invoke-virtual {p2}, Lnab$d;->c()I

    move-result v2

    const/4 v3, 0x3

    invoke-interface {p1, v2, v3}, Lqk3;->track(II)Lfva;

    move-result-object v2

    iget-object v3, p0, Lra9;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplayer2/k;

    iget-object v4, v3, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    const-string v5, "application/cea-608"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "application/cea-708"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid closed caption mime type provided: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lzi;->b(ZLjava/lang/Object;)V

    iget-object v5, v3, Lcom/google/android/exoplayer2/k;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p2}, Lnab$d;->b()Ljava/lang/String;

    move-result-object v5

    :goto_3
    new-instance v6, Lcom/google/android/exoplayer2/k$b;

    invoke-direct {v6}, Lcom/google/android/exoplayer2/k$b;-><init>()V

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/k$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/exoplayer2/k$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k;->e:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->g0(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    iget-object v5, v3, Lcom/google/android/exoplayer2/k;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    iget v5, v3, Lcom/google/android/exoplayer2/k;->E:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/k$b;->F(I)Lcom/google/android/exoplayer2/k$b;

    move-result-object v4

    iget-object v3, v3, Lcom/google/android/exoplayer2/k;->o:Ljava/util/List;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/k$b;->T(Ljava/util/List;)Lcom/google/android/exoplayer2/k$b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/k$b;->E()Lcom/google/android/exoplayer2/k;

    move-result-object v3

    invoke-interface {v2, v3}, Lfva;->b(Lcom/google/android/exoplayer2/k;)V

    iget-object v3, p0, Lra9;->b:[Lfva;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
