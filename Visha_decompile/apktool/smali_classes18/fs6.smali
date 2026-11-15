.class public Lfs6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzp0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs6$b;,
        Lfs6$a;
    }
.end annotation


# instance fields
.field public final a:Lfs6$a;

.field public final b:Lfs6$a;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/lang/ref/ReferenceQueue;

.field public final e:I

.field public final f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lfs6$a;

    invoke-direct {v0}, Lfs6$a;-><init>()V

    iput-object v0, p0, Lfs6;->a:Lfs6$a;

    new-instance v1, Lfs6$a;

    invoke-direct {v1}, Lfs6$a;-><init>()V

    iput-object v1, p0, Lfs6;->b:Lfs6$a;

    invoke-virtual {v1, v0}, Lfs6$a;->d(Lfs6$a;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfs6;->c:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lfs6;->d:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    iput v0, p0, Lfs6;->g:I

    iput v0, p0, Lfs6;->h:I

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    iput p1, p0, Lfs6;->e:I

    iput p2, p0, Lfs6;->f:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "softSizeLimit < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "strongSizeLimit < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final b(Lfs6$a;)V
    .locals 2

    iget-object v0, p0, Lfs6;->a:Lfs6$a;

    invoke-virtual {p1, v0}, Lfs6$a;->d(Lfs6$a;)V

    iget p1, p0, Lfs6;->g:I

    iget v0, p0, Lfs6;->e:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lfs6;->b:Lfs6$a;

    invoke-virtual {p1}, Lfs6$a;->b()Lfs6$a;

    move-result-object p1

    iget-object v0, p0, Lfs6;->a:Lfs6$a;

    if-eq p1, v0, :cond_3

    invoke-virtual {p1}, Lfs6$a;->g()V

    iget v0, p0, Lfs6;->f:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lfs6;->b:Lfs6$a;

    invoke-virtual {p1, v0}, Lfs6$a;->d(Lfs6$a;)V

    new-instance v0, Lfs6$b;

    iget-object v1, p0, Lfs6;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Lfs6$b;-><init>(Lfs6$a;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {p1, v0}, Lfs6$a;->f(Ljava/lang/Object;)V

    iget p1, p0, Lfs6;->h:I

    iget v0, p0, Lfs6;->f:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lfs6;->a:Lfs6$a;

    invoke-virtual {p1}, Lfs6$a;->b()Lfs6$a;

    move-result-object p1

    invoke-virtual {p1}, Lfs6$a;->g()V

    iget-object p0, p0, Lfs6;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lfs6$a;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfs6;->h:I

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lfs6;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lfs6$a;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfs6;->g:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final c(Lfs6$a;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0, p1}, Lfs6;->f(Lfs6$a;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lfs6$a;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lfs6$b;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lfs6$a;->f(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lfs6;->b(Lfs6$a;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lfs6;->c:Ljava/util/Map;

    invoke-virtual {p2}, Lfs6$b;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Lfs6$a;->f(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, p1}, Lfs6;->b(Lfs6$a;)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lfs6;->a:Lfs6$a;

    invoke-virtual {v0}, Lfs6$a;->e()V

    iget-object v0, p0, Lfs6;->b:Lfs6$a;

    iget-object v1, p0, Lfs6;->a:Lfs6$a;

    invoke-virtual {v0, v1}, Lfs6$a;->d(Lfs6$a;)V

    iget-object v0, p0, Lfs6;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lfs6;->h:I

    iput v0, p0, Lfs6;->g:I

    :goto_0
    iget-object v0, p0, Lfs6;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lfs6;->d:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lfs6$b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lfs6$b;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfs6;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final e(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lfs6;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfs6$a;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lfs6;->f(Lfs6$a;)Z

    :cond_0
    return-void
.end method

.method public final f(Lfs6$a;)Z
    .locals 1

    invoke-virtual {p1}, Lfs6$a;->g()V

    invoke-virtual {p1}, Lfs6$a;->c()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lfs6$b;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lfs6;->h:I

    sub-int/2addr p1, v0

    iput p1, p0, Lfs6;->h:I

    return v0

    :cond_0
    iget p1, p0, Lfs6;->g:I

    sub-int/2addr p1, v0

    iput p1, p0, Lfs6;->g:I

    const/4 p0, 0x0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfs6;->d()V

    iget-object v0, p0, Lfs6;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfs6$a;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lfs6;->c(Lfs6$a;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lfs6$a;->c()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lfs6$b;

    if-eqz p1, :cond_1

    check-cast p0, Lfs6$b;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lfs6;->d()V

    iget-object v0, p0, Lfs6;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfs6$a;

    if-nez v0, :cond_0

    new-instance v0, Lfs6$a;

    invoke-direct {v0, p1, p2}, Lfs6$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lfs6;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lfs6;->b(Lfs6$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lfs6;->c(Lfs6$a;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
