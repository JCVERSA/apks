.class public final Luoh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedList;

.field public final b:I

.field public final c:I

.field public final d:Lsph;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Luoh;->a:Ljava/util/LinkedList;

    iput p1, p0, Luoh;->b:I

    iput p2, p0, Luoh;->c:I

    new-instance p1, Lsph;

    invoke-direct {p1}, Lsph;-><init>()V

    iput-object p1, p0, Luoh;->d:Lsph;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Luoh;->d:Lsph;

    invoke-virtual {p0}, Lsph;->a()I

    move-result p0

    return p0
.end method

.method public final b()I
    .locals 0

    invoke-virtual {p0}, Luoh;->i()V

    iget-object p0, p0, Luoh;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p0

    return p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Luoh;->d:Lsph;

    invoke-virtual {p0}, Lsph;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    iget-object p0, p0, Luoh;->d:Lsph;

    invoke-virtual {p0}, Lsph;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Lbph;
    .locals 2

    iget-object v0, p0, Luoh;->d:Lsph;

    invoke-virtual {v0}, Lsph;->f()V

    invoke-virtual {p0}, Luoh;->i()V

    iget-object p0, p0, Luoh;->a:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lbph;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lsph;->h()V

    :cond_1
    return-object p0
.end method

.method public final f()Lpph;
    .locals 0

    iget-object p0, p0, Luoh;->d:Lsph;

    invoke-virtual {p0}, Lsph;->d()Lpph;

    move-result-object p0

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Luoh;->d:Lsph;

    invoke-virtual {p0}, Lsph;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Lbph;)Z
    .locals 2

    iget-object v0, p0, Luoh;->d:Lsph;

    invoke-virtual {v0}, Lsph;->f()V

    invoke-virtual {p0}, Luoh;->i()V

    iget-object v0, p0, Luoh;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget p0, p0, Luoh;->b:I

    if-ne v1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final i()V
    .locals 6

    :goto_0
    iget-object v0, p0, Luoh;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbph;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzC()Lfy0;

    move-result-object v2

    invoke-interface {v2}, Lfy0;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lbph;->d:J

    sub-long/2addr v2, v4

    iget v1, p0, Luoh;->c:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Luoh;->d:Lsph;

    invoke-virtual {v1}, Lsph;->g()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
