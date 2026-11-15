.class public final Lrc9;
.super Lsc9;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lwh1;
.implements Lqe5;


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/util/Iterator;

.field public e:Lwh1;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsc9;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lrc9;->c:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lrc9;->b:I

    iput-object p2, p0, Lrc9;->e:Lwh1;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_0
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public d(Ljava/util/Iterator;Lwh1;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0

    :cond_0
    iput-object p1, p0, Lrc9;->d:Ljava/util/Iterator;

    const/4 p1, 0x2

    iput p1, p0, Lrc9;->b:I

    iput-object p2, p0, Lrc9;->e:Lwh1;

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    invoke-static {p2}, Lpt1;->c(Lwh1;)V

    :cond_1
    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method

.method public final e()Ljava/lang/Throwable;
    .locals 3

    iget v0, p0, Lrc9;->b:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected state of the iterator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lrc9;->b:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string p0, "Iterator has failed."

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    :goto_0
    return-object v0
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lrc9;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lrc9;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final g(Lwh1;)V
    .locals 0

    iput-object p1, p0, Lrc9;->e:Lwh1;

    return-void
.end method

.method public getContext()Lkotlin/coroutines/d;
    .locals 0

    sget-object p0, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object p0
.end method

.method public hasNext()Z
    .locals 4

    :goto_0
    iget v0, p0, Lrc9;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lrc9;->e()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lrc9;->d:Ljava/util/Iterator;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, p0, Lrc9;->b:I

    return v3

    :cond_3
    iput-object v1, p0, Lrc9;->d:Ljava/util/Iterator;

    :cond_4
    const/4 v0, 0x5

    iput v0, p0, Lrc9;->b:I

    iget-object v0, p0, Lrc9;->e:Lwh1;

    invoke-static {v0}, Ly45;->g(Ljava/lang/Object;)V

    iput-object v1, p0, Lrc9;->e:Lwh1;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    sget-object v1, Lzfb;->a:Lzfb;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lwh1;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lrc9;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lrc9;->b:I

    iget-object v0, p0, Lrc9;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lrc9;->c:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lrc9;->e()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    :cond_1
    iput v1, p0, Lrc9;->b:I

    iget-object p0, p0, Lrc9;->d:Ljava/util/Iterator;

    invoke-static {p0}, Ly45;->g(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lrc9;->f()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lkotlin/c;->b(Ljava/lang/Object;)V

    const/4 p1, 0x4

    iput p1, p0, Lrc9;->b:I

    return-void
.end method
